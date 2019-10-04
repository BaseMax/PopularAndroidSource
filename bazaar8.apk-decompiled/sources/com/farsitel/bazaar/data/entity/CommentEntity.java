package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: CommentEntity.kt */
public final class CommentEntity {
    public EntityDatabaseStatus entityDatabaseStatus;
    public final String entityId;
    public final EntityType entityType;
    public final long entityVersion;
    public final Long id;
    public final int rate;
    public final String text;

    public CommentEntity(Long l2, String str, long j2, String str2, int i2, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(str, "entityId");
        j.b(entityType2, "entityType");
        j.b(entityDatabaseStatus2, "entityDatabaseStatus");
        this.id = l2;
        this.entityId = str;
        this.entityVersion = j2;
        this.text = str2;
        this.rate = i2;
        this.entityType = entityType2;
        this.entityDatabaseStatus = entityDatabaseStatus2;
    }

    public static /* synthetic */ CommentEntity copy$default(CommentEntity commentEntity, Long l2, String str, long j2, String str2, int i2, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2, int i3, Object obj) {
        CommentEntity commentEntity2 = commentEntity;
        return commentEntity.copy((i3 & 1) != 0 ? commentEntity2.id : l2, (i3 & 2) != 0 ? commentEntity2.entityId : str, (i3 & 4) != 0 ? commentEntity2.entityVersion : j2, (i3 & 8) != 0 ? commentEntity2.text : str2, (i3 & 16) != 0 ? commentEntity2.rate : i2, (i3 & 32) != 0 ? commentEntity2.entityType : entityType2, (i3 & 64) != 0 ? commentEntity2.entityDatabaseStatus : entityDatabaseStatus2);
    }

    public final Long component1() {
        return this.id;
    }

    public final String component2() {
        return this.entityId;
    }

    public final long component3() {
        return this.entityVersion;
    }

    public final String component4() {
        return this.text;
    }

    public final int component5() {
        return this.rate;
    }

    public final EntityType component6() {
        return this.entityType;
    }

    public final EntityDatabaseStatus component7() {
        return this.entityDatabaseStatus;
    }

    public final CommentEntity copy(Long l2, String str, long j2, String str2, int i2, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(str, "entityId");
        EntityType entityType3 = entityType2;
        j.b(entityType3, "entityType");
        EntityDatabaseStatus entityDatabaseStatus3 = entityDatabaseStatus2;
        j.b(entityDatabaseStatus3, "entityDatabaseStatus");
        CommentEntity commentEntity = new CommentEntity(l2, str, j2, str2, i2, entityType3, entityDatabaseStatus3);
        return commentEntity;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CommentEntity) {
                CommentEntity commentEntity = (CommentEntity) obj;
                if (j.a((Object) this.id, (Object) commentEntity.id) && j.a((Object) this.entityId, (Object) commentEntity.entityId)) {
                    if ((this.entityVersion == commentEntity.entityVersion) && j.a((Object) this.text, (Object) commentEntity.text)) {
                        if (!(this.rate == commentEntity.rate) || !j.a((Object) this.entityType, (Object) commentEntity.entityType) || !j.a((Object) this.entityDatabaseStatus, (Object) commentEntity.entityDatabaseStatus)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final EntityDatabaseStatus getEntityDatabaseStatus() {
        return this.entityDatabaseStatus;
    }

    public final String getEntityId() {
        return this.entityId;
    }

    public final EntityType getEntityType() {
        return this.entityType;
    }

    public final long getEntityVersion() {
        return this.entityVersion;
    }

    public final Long getId() {
        return this.id;
    }

    public final int getRate() {
        return this.rate;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        Long l2 = this.id;
        int i2 = 0;
        int hashCode = (l2 != null ? l2.hashCode() : 0) * 31;
        String str = this.entityId;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j2 = this.entityVersion;
        int i3 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str2 = this.text;
        int hashCode3 = (((i3 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.rate) * 31;
        EntityType entityType2 = this.entityType;
        int hashCode4 = (hashCode3 + (entityType2 != null ? entityType2.hashCode() : 0)) * 31;
        EntityDatabaseStatus entityDatabaseStatus2 = this.entityDatabaseStatus;
        if (entityDatabaseStatus2 != null) {
            i2 = entityDatabaseStatus2.hashCode();
        }
        return hashCode4 + i2;
    }

    public final void setEntityDatabaseStatus(EntityDatabaseStatus entityDatabaseStatus2) {
        j.b(entityDatabaseStatus2, "<set-?>");
        this.entityDatabaseStatus = entityDatabaseStatus2;
    }

    public String toString() {
        return "CommentEntity(id=" + this.id + ", entityId=" + this.entityId + ", entityVersion=" + this.entityVersion + ", text=" + this.text + ", rate=" + this.rate + ", entityType=" + this.entityType + ", entityDatabaseStatus=" + this.entityDatabaseStatus + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CommentEntity(Long l2, String str, long j2, String str2, int i2, EntityType entityType2, EntityDatabaseStatus entityDatabaseStatus2, int i3, f fVar) {
        this((i3 & 1) != 0 ? null : l2, str, j2, str2, i2, entityType2, (i3 & 64) != 0 ? EntityDatabaseStatus.PENDING : entityDatabaseStatus2);
    }
}
