from hamcrest import *
import pytest
import cx_Oracle


@pytest.fixture(scope='session')
def connection():
    connection = cx_Oracle.connect('sys/oracle@localhost/xe', mode=cx_Oracle.SYSDBA)
    yield connection
    connection.close()


@pytest.fixture(scope='function')
def cursor(connection):
    cursor = connection.cursor()
    yield cursor
    cursor.close()


def test_can_connect(connection):
    assert_that(connection.version, equal_to('11.2.0.2.0'))


def test_instance_is_ready(cursor):
    status, = cursor.execute('select status from v$instance').fetchone()

    assert_that(status, equal_to('OPEN'))
