// src/App.js
import React from 'react';
import Header from 'Header';
import CategoryCard from 'CategoryCard';
import ProductCard from 'ProductCard';
import './App.css'; // Certifique-se de ter um arquivo CSS correspondente.

function App() {
  return (
    <div className="App">
      <Header />
      
      {/* Exemplo de uso do CategoryCard */}
      <section className="sec-cat">
        <CategoryCard 
          imageSrc="imagens/bolo-icon.png" 
          altText="img-sobremesa" 
          categoryName="Sobremesas" 
        />
        {/* ... Outros CategoryCard semelhantes aqui ... */}
      </section>

      {/* Exemplo de uso do ProductCard */}
      <section className="sec-esp">
        <ProductCard 
          imageSrc="imagens/img-prato-de-espeto-carne.png" 
          altText="img-espeto-de-carne" 
          productName="Espeto de carne" 
          price="$5.70" 
        />
        {/* ... Outros ProductCard semelhantes aqui ... */}
      </section>

      {/* Continue estruturando seu componente App com outros componentes necessários... */}
    </div>
  );
}

export default App;
