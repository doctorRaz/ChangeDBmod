using System.Runtime.CompilerServices;

namespace drz.ChangeDBmod.Abstractions.Interfaces
{
    public interface IMessageService
    {
        /// <summary> Вывод сообщения в консоль </summary>
        /// <param name="Message">Выводимое сообщение</param>
        /// <param name="CallerName">Вызывающий метод. При использовании обязательно использование <code>[CallerMemberName]</code></param>
        void ConsoleMessage(string Message, string Title = null, [CallerMemberName] string CallerName = null);

    }

}
