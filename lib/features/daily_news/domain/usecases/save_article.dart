import 'package:newsapp/features/daily_news/domain/repositories/article_repository.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/article.dart';

class SaveArticleUseCase implements UseCase<void,ArticleEntity>{
  
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);
  
  @override
  Future<void> call({ArticleEntity ? params}) {
    return _articleRepository.savedArticle(params!);
  }
  
}