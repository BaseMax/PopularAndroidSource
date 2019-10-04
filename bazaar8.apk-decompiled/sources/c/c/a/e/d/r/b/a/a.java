package c.c.a.e.d.r.b.a;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;
import java.util.List;

/* compiled from: CommentDao.kt */
public interface a {
    LiveData<LocalCommentEntity> a(String str);

    List<LocalCommentEntity> a(EntityDatabaseStatus entityDatabaseStatus);

    void a();

    void a(LocalCommentEntity localCommentEntity);

    LocalCommentEntity b(String str);

    void b(LocalCommentEntity localCommentEntity);
}
