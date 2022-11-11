import './App.css';

function App() {
  const { version } = window['appConfig'] || 'demo';

  return (
    <div className="App">
      <h1>Hello World</h1>

      <h4>Version: {version}</h4>
    </div>
  );
}

export default App;
