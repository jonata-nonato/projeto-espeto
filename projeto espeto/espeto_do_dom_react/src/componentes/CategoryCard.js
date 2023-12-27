// src/components/CategoryCard.js
import React from 'react';

function CategoryCard({ imageSrc, altText, categoryName }) {
    return (
        <div className="card-categorias">
            <img src={imageSrc} alt={altText} />
            <p>{categoryName}</p>
        </div>
    );
}

export default CategoryCard;
