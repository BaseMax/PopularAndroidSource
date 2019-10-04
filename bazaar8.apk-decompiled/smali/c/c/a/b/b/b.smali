.class public final Lc/c/a/b/b/b;
.super Ljava/lang/Object;
.source "DownloadServiceNotifyModel.kt"


# instance fields
.field public final a:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "downloadServiceNotifyType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/b/b;->a:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    iput-object p2, p0, Lc/c/a/b/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/b/b/b;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/b/b;->a:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/b/b;->c:Ljava/lang/Boolean;

    return-object v0
.end method
