import React from "react";
import RecipeIndexCard from '../recipes/recipe_index_card'

class SearchRecipes extends React.Component {
    componentDidMount() {
        this.props.clearSearch();
        this.props.getAllRecipes();
        this.props.searchPage(this.props.match.params.query);
        this.props.closeModal();
        window.scrollTo(0, 0);
    }

    componentDidUpdate(oldProps) {
        if (this.props.location.pathname !== oldProps.location.pathname) {
            this.props.clearSearchPage();
            this.props.searchPage(this.props.match.params.query);
            window.scrollTo(0, 0);
        }
    }

    render() {
        let { currentUser, openModal, recipes, searches } = this.props
        if (Object.values(recipes).length === 0) return (<div className="no-search-results"></div>);

        if (searches.length === 0) return (
            <div className='no-search-results'>
                <h1 className="no-search-results-header">No recipe results for "{this.props.match.params.query}"</h1>
                <h1 className='no-search-results-subheader'>Search again for other recipes</h1>
            </div>
        );

        return (
            <div className='recipe-grid-outer-container' >
                <div className='recipe-grid-container'>
                    <h1 className='recipe-grid-title'>Search Results</h1> 
                    <h2 className='recipe-grid-subtitle'>{searches.length} recipes</h2>
                    <div className='recipe-grid'>
                        {searches.map((search, idx) => {
                            let searchId = search.id
                            let recipe = recipes[(searchId - 1)]
                            return <RecipeIndexCard recipe={recipe} key={idx} currentUser={currentUser} openModal={openModal} />
                        }
                        )}
                    </div>
                </div>
            </div>
        )
    }
}

export default SearchRecipes