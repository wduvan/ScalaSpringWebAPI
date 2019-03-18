package org.springscala

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class Application

object Application extends App {
  //println("Hola Mundo")
  SpringApplication.run(classOf[Application]);
}
