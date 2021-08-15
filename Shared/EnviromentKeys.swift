//
//  EnviromentKeys.swift
//  passmapi_iOS
//
//  Created by よしの on 2021/07/18.
//

import Foundation
struct TodoListKey: EnvironmentKey {
  typealias Value = [TodoModel]
  
  static var defaultValue: String = "Default String"
}
