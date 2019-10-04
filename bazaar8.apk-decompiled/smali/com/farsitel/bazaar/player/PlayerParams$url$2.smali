.class public final Lcom/farsitel/bazaar/player/PlayerParams$url$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerParams.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/l/f;


# direct methods
.method public constructor <init>(Lc/c/a/l/f;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/net/Uri;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    invoke-virtual {v0}, Lc/c/a/l/f;->d()Lcom/farsitel/bazaar/player/VideoSource;

    move-result-object v0

    sget-object v1, Lc/c/a/l/g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    invoke-virtual {v0}, Lc/c/a/l/f;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    invoke-static {v1}, Lc/c/a/l/f;->a(Lc/c/a/l/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    invoke-virtual {v1}, Lc/c/a/l/f;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->this$0:Lc/c/a/l/f;

    invoke-virtual {v0}, Lc/c/a/l/f;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/l/f;->c(Lc/c/a/l/f;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/PlayerParams$url$2;->invoke()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
