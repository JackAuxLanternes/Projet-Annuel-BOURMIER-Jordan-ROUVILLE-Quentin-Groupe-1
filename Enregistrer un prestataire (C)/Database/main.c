#include <stdio.h>
#include <stdlib.h>
#include <winsock.h>
#include <MYSQL/mysql.h>

int main(int argc, char **argv)
{
    printf("\nhello");
    MYSQL *con = mysql_init(NULL);

    if (con == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        exit(1);
    }

    printf("\ntest");
    if (mysql_real_connect(con, "localhost", "root", "root",
                           "perfect-concierge", 3307, NULL, 0) == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        mysql_close(con);
        exit(1);
    }
    printf("\ntest2");
    if (mysql_query(con, "SELECT * FROM USER"))
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        mysql_close(con);
        exit(1);
    }
    printf("\ntest3");
    mysql_close(con);
    exit(0);
}