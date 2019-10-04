.class interface abstract Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback;
.super Ljava/lang/Object;
.source "MessageCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FetchCallback"
.end annotation


# virtual methods
.method public abstract onFetchFinish(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;)V"
        }
    .end annotation
.end method
