FROM kasmweb/ubuntu-jammy-dind:1.15.0-rolling
#FROM kasmweb/ubuntu-jammy-desktop:1.15.0
USER root

ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME

######### Customize Container Here ###########

# Install docker-compose
RUN apt-get update \
  && apt-get install docker-compose -y

# Install PowerShell
ENV PSVER 7.4.2
ENV PSHome /opt/microsoft/powershell/7
RUN wget -O powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v$PSVER/powershell-$PSVER-linux-arm64.tar.gz \
  && mkdir -p $PSHome \
  && tar xzvf powershell.tar.gz -C $PSHome \
  && ln -s $PSHome/pwsh /usr/bin/pwsh \
  && echo /usr/bin/pwsh >> /etc/shells \
  && rm powershell.tar.gz

# Install DotNet
RUN curl -s https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh | bash \
  && echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc \
  echo 'export PATH=$PATH:DOTNET_ROOT' >> ~/.bashrc

## No longer required as using rolling image
# Update all packages
# RUN apt-get update \
#   && apt-get upgrade -y \
#   && apt-get autoremove -y \
#   && apt-get autoclean -y

######### End Customizations ###########

RUN chown 1000:0 $HOME
RUN $STARTUPDIR/set_user_permission.sh $HOME

ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000