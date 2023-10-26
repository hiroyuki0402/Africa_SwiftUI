//
//  StringURL.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/26.
//

import Foundation

extension String {
    /// 文字列をURLに変換
    ///
    /// このメソッドは、呼び出された文字列から`URL`を作成しようと試みる
    /// もし文字列が有効なURLでない場合、デフォルトのURLにフォールバックする
    ///
    /// - Parameter defaultURL: メソッドが文字列からURLを作成できなかった場合に使用する
    ///                          デフォルトのURLを表す文字列
    ///
    /// - Returns: 文字列から作成した`URL`、または文字列が有効なURLでない場合はデフォルトのURL
    ///
    /// - Warning: 両方のURL作成が失敗した場合はランタイムエラーが発生する
    ///
    func toURL(defaultURL: String = "https://wikipedia.org") -> URL {
        /// 文字列からURLを作成
        if let url = URL(string: self) {
            return url
        }

        /// デフォルトのURL文字列からURLを作成
        if let defaultUrl = URL(string: defaultURL) {
            return defaultUrl
        }

        /// どちらも失敗した場合は、ランタイムエラーを発生させる
        fatalError("URLを作成できませんでした。")
    }
}

