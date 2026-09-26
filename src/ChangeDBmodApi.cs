namespace drz.ChangeDBmod
{
    /// <summary>
    /// Публичный API ChangeDBmod для использования из других сборок.
    /// </summary>
    public static class ChangeDBmodApi
    {
        /// <summary>
        /// Устанавливает параметр базы данных MultiCAD.
        /// </summary>
        /// <param name="value">Значение параметра.</param>
        /// <param name="parameter">Идентификатор параметра MultiCAD.</param>
        public static void SetParam(string value, int parameter)
        {
            MulticadInterop.MulticadReflection.SetParam(value, parameter);
        }
    }
}
