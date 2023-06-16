class CompileMe
{
    static string X<T>(Func<T, string> _) => Y(_);
    static string Y<T>(Func<T, string> _) where T : struct => typeof(T).Name + _(default);

    public static void Main()
    {
        var key =
            Y<long>(H=>X(He=>""));
        Console.WriteLine(key);
        var enc = Convert.FromBase64String("To8nQU1OWzL4qzlMYUPPeCI68VIueVeBrtZYuNkHv5TfVXoriYjNIW23S0DHdPNQW84enVObbXmPF6O1xs1+9MiWVAu6T39L");
        Console.WriteLine(string.Concat(new Rfc2898DeriveBytes(key, 0).GetBytes(99).Zip(enc, (a, b) => (char)(a ^ b))));
    }
}
