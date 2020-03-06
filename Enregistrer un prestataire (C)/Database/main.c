#include "mysql.h"
#include <stdio.h>

int main() {
    MYSQL mysql;

    if(mysql_init(&mysql)==NULL) {
        printf("\nInitialization error\n");
        return 0;
    }

    mysql_real_connect(&mysql,"localhost","root","root","perfect-concierge",3307,NULL,0);

    printf("Client version: %s",mysql_get_client_info());
    printf("\nServer version: %s",mysql_get_server_info(&mysql));
    mysql_close(&mysql);
    return 1;
}