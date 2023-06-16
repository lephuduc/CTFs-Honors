using System.Linq;
using System.Security.Cryptography;
class CompileMe
{

    static string X(Func<long, string> _) => Y(_);
    static string X(Func<byte, string> _) => Y(_);
    static string Y<T>(Func<T, string> _) where T : struct => typeof(T).Name + _(default);

    public static void Main()
    {
        var key = "Int64BooleanByteUInt32UInt16SByteInt32Int16UInt64UInt64Int16SByteInt32Int64ByteBooleanUInt32UInt16Int32UInt32UInt16Int16UInt64BooleanByteInt64SByteBooleanUInt16Int16ByteSByteUInt32Int64UInt64Int32SByteInt32UInt64Int64Int16UInt16UInt32ByteBooleanByteInt64UInt32BooleanInt32UInt64UInt16SByteInt16UInt16ByteBooleanUInt64UInt32Int16SByteInt32Int64Int16SByteInt64UInt16ByteInt32UInt64BooleanUInt32UInt32UInt64Int32SByteBooleanInt64Int16UInt16Byte";
        var enc = Convert.FromBase64String("To8nQU1OWzL4qzlMYUPPeCI68VIueVeBrtZYuNkHv5TfVXoriYjNIW23S0DHdPNQW84enVObbXmPF6O1xs1+9MiWVAu6T39L");
        Console.WriteLine(string.Concat(new Rfc2898DeriveBytes(key, 0).GetBytes(99).Zip(enc, (a, b) => (char)(a ^ b))));
    }
}
