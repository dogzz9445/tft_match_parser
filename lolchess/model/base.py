from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, scoped_session

from .secret import MYSQL_PASSWORD

engine = create_engine('mysql+pymysql://dmjang:'+MYSQL_PASSWORD+'@172.17.0.2:3306/lolchess', 
                        pool_pre_ping=True)
_Session = scoped_session(sessionmaker(bind=engine))

Base = declarative_base()

def Session():
    #Base.metadata.create_all(engine)
    return _Session()