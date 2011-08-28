//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

package flambe.server;

class Node
{
    public static var stringify :Dynamic -> String = untyped JSON.stringify;
    public static var parse :String -> Dynamic = untyped JSON.parse;
    public static var require :String -> Dynamic = untyped __js__("require");

    public static function puts (message :String)
    {
        _sys.puts(message);
    }

    /** 'Error' isn't available in haXe, but it's the only way to get a stack trace. */
    inline public static function throwError (message :String)
    {
        throw untyped __js__("new Error")(message);
    }

    private static var _sys = require("sys");
}
