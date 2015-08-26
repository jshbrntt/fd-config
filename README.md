# fd-config
My FlashDevelop configuration.

# Installation
Download *.fdz* file from releases and open it will auto-extract the configuration files into FlashDevelop's installation directory.

# Manual Installation
Pick and choose what you want from *$(BaseDir)* and copy to manually to FlashDevelop's installation directory. e.g.

- `C:\Program Files (x86)\FlashDevelop\`
- `%AppData%\FlashDevelop\`

## Snippets

### trace
Traces out a selected variable with a label.
```as3
var example:String = 'This is an example';

// Select text below and press [Ctrl+B], select 'trace' snippet.
example

// The above action will output the below.
trace("example: "+example);

/** Trace Log:
 * example: This is an example
 */
```

### log
Logs out the package, class and method name.

```as3
package models
{
    import engine.mvc.Model;

    public class ScoreModel extends Model
    {
        protected var _score:uint;

        public function ScoreModel()
        {
            super();
            _score = 0;
        }

        public function reset():void
        {
            // Using 'log' snippet here produces the following trace statement.
            trace('models.ScoreModel.reset');
             
            _score = 0;
            _updated.dispatch();
        }

        public function addMatches(matches:int):void
        {
            _score += fibonacci(matches) * 10;
            _updated.dispatch();
        }

        protected function fibonacci(n:uint):uint
        {
            return (n < 2) ? n : fibonacci(n - 2) + fibonacci(n - 1);
        }

        public function get score():uint
        {
            return _score;
        }

    }

}
```
