// src/components/ProductCard.js
import React from 'react';

function ProductCard({ imageSrc, altText, productName, price }) {
    return (
        <div className="card-espetinhos">
            <img src={imageSrc} alt={altText} />
            <p>{productName}</p>
            <footer>
                <p className="cifrao">{price}</p>
                <button className="mais">+</button>
            </footer>
        </div>
    );
}

export default ProductCard;
