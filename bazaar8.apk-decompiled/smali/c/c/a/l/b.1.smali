.class public final Lc/c/a/l/b;
.super Ljava/lang/Object;
.source "CafePlayer.kt"

# interfaces
.implements Lc/e/a/a/n/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer;->a(Landroid/net/Uri;)Lc/e/a/a/n/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lc/e/a/a/n/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/l/b;->a()Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/l/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;

    return-object v0
.end method
