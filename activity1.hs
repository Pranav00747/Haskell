module Main where
import Control.Applicative
import Database.SQLite.Simple
import Database.SQLite.Simple.FromRow

getEmployeeDisplay::String
getEmployeeDisplay=do
 conn <-open 'info.db'
 d <-query_ conn "select * from company_info"
 close conn
 mapM_ print d

main::IO()
main=do
  getEmployeeDisplay