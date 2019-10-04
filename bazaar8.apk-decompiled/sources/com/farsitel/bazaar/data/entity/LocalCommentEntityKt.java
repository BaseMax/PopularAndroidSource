package com.farsitel.bazaar.data.entity;

import h.f.b.j;

/* compiled from: LocalCommentEntity.kt */
public final class LocalCommentEntityKt {
    public static final CommentEntity toCommentEntity(LocalCommentEntity localCommentEntity) {
        j.b(localCommentEntity, "$this$toCommentEntity");
        CommentEntity commentEntity = new CommentEntity(localCommentEntity.getId(), localCommentEntity.getEntityId(), localCommentEntity.getEntityVersion(), localCommentEntity.getText(), localCommentEntity.getRate(), localCommentEntity.getEntityType(), localCommentEntity.getEntityDatabaseStatus());
        return commentEntity;
    }
}
