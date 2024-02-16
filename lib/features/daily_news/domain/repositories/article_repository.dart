import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
//API methods
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
  
//Database methods
  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> savedArticle(ArticleEntity article);

  Future<void> removeArticle(ArticleEntity article);
}
