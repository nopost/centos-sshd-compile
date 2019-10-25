FROM jupincu/centos-sshd:latest
MAINTAINER Nopost(nopost@qq.com)
RUN yum -y install \
        patch \ 
        perl  \
        gcc  gcc-c++ autoconf  \
        automake make zlib zlib-devel make cmake \
        gcc gcc-c++ gcc-g77 flex bison file  \
        libtool libtool-libs autoconf kernel-devel  \
        patch wget libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel  \
        gd gd-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel  \
        tar bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel  \
        curl curl-devel libcurl libcurl-devel e2fsprogs e2fsprogs-devel  \
        krb5 krb5-devel libidn libidn-devel openssl openssl-devel  \
        vim-minimal gettext gettext-devel ncurses-devel gmp-devel pspell-devel  \
        libcap diffutils ca-certificates net-tools libc-client-devel  \
        psmisc libXpm-devel c-ares-devel libicu-devel libxslt libxslt-devel  \
        zip unzip glibc.i686 libstdc++.so.6 cairo-devel bison-devel  \
        ncurses-devel libaio-devel  \
        perl perl-devel perl-Data-Dumper  \
        lsof pcre pcre-devel vixie-cron  \
        crontabs expat-devel readline-devel && \
    yum clean all

ENTRYPOINT ["/config/bootstrap.sh"]
