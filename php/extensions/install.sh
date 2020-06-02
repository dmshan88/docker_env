export MC="-j$(nproc)"

installExtensionFromTgz()
{
    tgzName=$1
    extensionName="${tgzName%%-*}"

    mkdir ${extensionName}
    tar -xf ${tgzName}.tgz -C ${extensionName} --strip-components=1
    ( cd ${extensionName} && phpize && ./configure && make ${MC} && make install )

    docker-php-ext-enable ${extensionName} $2
}

echo "---------- Install gd ----------"
docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
docker-php-ext-install  ${MC} gd

echo "---------- Install pdo_mysql ----------"
docker-php-ext-install ${MC} pdo_mysql

echo "---------- Install mongo----------"
installExtensionFromTgz mongo-1.4.5

echo "---------- Install mongodb ----------"
installExtensionFromTgz mongodb-1.5.5
