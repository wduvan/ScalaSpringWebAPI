package org.springscala.repositories

import org.springframework.stereotype.Repository
import org.springscala.entity.Users
import org.springframework.data.repository.CrudRepository
import org.springframework.data.jpa.repository.{JpaRepository, Query}
import java.lang.Long

import scala.annotation.meta.param

@Repository
trait UserRepository  extends CrudRepository[Users, Long] {

  def findUserByUsername(username: String): Users

  @Query(value = "select * from users where username= ?1 and password = ?2", nativeQuery = true)
  def findUserByUsernameAndPassword(username: String, password: String): Users
}
