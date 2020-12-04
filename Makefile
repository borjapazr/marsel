.PHONY: mariadb-health

up:
	@docker-compose up -d

down:
	@docker-compose down

mariadb-health:
	@docker exec marsel-db mysqladmin --user=root --password=marsel-rp --host "127.0.0.1" ping --silent 2>/dev/null | grep -q "mysqld is alive" && echo "MariaDB is up!" || echo "MariaDB is down!"