package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: CommentActionEntity.kt */
public final class CommentActionEntity {
    public final CommentAction commentAction;
    public EntityDatabaseStatus entityDatabaseStatus;
    public final EntityType entityType;
    public final Long id;
    public final boolean isReply;
    public final int reviewId;

    public CommentActionEntity(Long l2, int i2, CommentAction commentAction2, boolean z, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(commentAction2, "commentAction");
        j.b(entityType2, "entityType");
        j.b(entityDatabaseStatus2, "entityDatabaseStatus");
        this.id = l2;
        this.reviewId = i2;
        this.commentAction = commentAction2;
        this.isReply = z;
        this.entityType = entityType2;
        this.entityDatabaseStatus = entityDatabaseStatus2;
    }

    public static /* synthetic */ CommentActionEntity copy$default(CommentActionEntity commentActionEntity, Long l2, int i2, CommentAction commentAction2, boolean z, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            l2 = commentActionEntity.id;
        }
        if ((i3 & 2) != 0) {
            i2 = commentActionEntity.reviewId;
        }
        int i4 = i2;
        if ((i3 & 4) != 0) {
            commentAction2 = commentActionEntity.commentAction;
        }
        CommentAction commentAction3 = commentAction2;
        if ((i3 & 8) != 0) {
            z = commentActionEntity.isReply;
        }
        boolean z2 = z;
        if ((i3 & 16) != 0) {
            entityType2 = commentActionEntity.entityType;
        }
        EntityType entityType3 = entityType2;
        if ((i3 & 32) != 0) {
            entityDatabaseStatus2 = commentActionEntity.entityDatabaseStatus;
        }
        return commentActionEntity.copy(l2, i4, commentAction3, z2, entityType3, entityDatabaseStatus2);
    }

    public final Long component1() {
        return this.id;
    }

    public final int component2() {
        return this.reviewId;
    }

    public final CommentAction component3() {
        return this.commentAction;
    }

    public final boolean component4() {
        return this.isReply;
    }

    public final EntityType component5() {
        return this.entityType;
    }

    public final EntityDatabaseStatus component6() {
        return this.entityDatabaseStatus;
    }

    public final CommentActionEntity copy(Long l2, int i2, CommentAction commentAction2, boolean z, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(commentAction2, "commentAction");
        j.b(entityType2, "entityType");
        j.b(entityDatabaseStatus2, "entityDatabaseStatus");
        CommentActionEntity commentActionEntity = new CommentActionEntity(l2, i2, commentAction2, z, entityType2, entityDatabaseStatus2);
        return commentActionEntity;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CommentActionEntity) {
                CommentActionEntity commentActionEntity = (CommentActionEntity) obj;
                if (j.a((Object) this.id, (Object) commentActionEntity.id)) {
                    if ((this.reviewId == commentActionEntity.reviewId) && j.a((Object) this.commentAction, (Object) commentActionEntity.commentAction)) {
                        if (!(this.isReply == commentActionEntity.isReply) || !j.a((Object) this.entityType, (Object) commentActionEntity.entityType) || !j.a((Object) this.entityDatabaseStatus, (Object) commentActionEntity.entityDatabaseStatus)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final CommentAction getCommentAction() {
        return this.commentAction;
    }

    public final EntityDatabaseStatus getEntityDatabaseStatus() {
        return this.entityDatabaseStatus;
    }

    public final EntityType getEntityType() {
        return this.entityType;
    }

    public final Long getId() {
        return this.id;
    }

    public final int getReviewId() {
        return this.reviewId;
    }

    public int hashCode() {
        Long l2 = this.id;
        int i2 = 0;
        int hashCode = (((l2 != null ? l2.hashCode() : 0) * 31) + this.reviewId) * 31;
        CommentAction commentAction2 = this.commentAction;
        int hashCode2 = (hashCode + (commentAction2 != null ? commentAction2.hashCode() : 0)) * 31;
        boolean z = this.isReply;
        if (z) {
            z = true;
        }
        int i3 = (hashCode2 + (z ? 1 : 0)) * 31;
        EntityType entityType2 = this.entityType;
        int hashCode3 = (i3 + (entityType2 != null ? entityType2.hashCode() : 0)) * 31;
        EntityDatabaseStatus entityDatabaseStatus2 = this.entityDatabaseStatus;
        if (entityDatabaseStatus2 != null) {
            i2 = entityDatabaseStatus2.hashCode();
        }
        return hashCode3 + i2;
    }

    public final boolean isReply() {
        return this.isReply;
    }

    public final void setEntityDatabaseStatus(EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(entityDatabaseStatus2, "<set-?>");
        this.entityDatabaseStatus = entityDatabaseStatus2;
    }

    public String toString() {
        return "CommentActionEntity(id=" + this.id + ", reviewId=" + this.reviewId + ", commentAction=" + this.commentAction + ", isReply=" + this.isReply + ", entityType=" + this.entityType + ", entityDatabaseStatus=" + this.entityDatabaseStatus + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CommentActionEntity(Long l2, int i2, CommentAction commentAction2, boolean z, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2, int i3, f fVar) {
        this((i3 & 1) != 0 ? null : l2, i2, commentAction2, z, entityType2, (i3 & 32) != 0 ? EntityDatabaseStatus.PENDING : entityDatabaseStatus2);
    }
}
