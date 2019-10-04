.class public Le/a/a/a/a/b/c;
.super Le/a/a/a/a/b/j;
.source "AdvertisingInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/a/b/d;->b(Le/a/a/a/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/a/a/b/b;

.field public final synthetic b:Le/a/a/a/a/b/d;


# direct methods
.method public constructor <init>(Le/a/a/a/a/b/d;Le/a/a/a/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a/b/c;->b:Le/a/a/a/a/b/d;

    iput-object p2, p0, Le/a/a/a/a/b/c;->a:Le/a/a/a/a/b/b;

    invoke-direct {p0}, Le/a/a/a/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/a/a/b/c;->b:Le/a/a/a/a/b/d;

    invoke-static {v0}, Le/a/a/a/a/b/d;->a(Le/a/a/a/a/b/d;)Le/a/a/a/a/b/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/a/a/b/c;->a:Le/a/a/a/a/b/b;

    invoke-virtual {v1, v0}, Le/a/a/a/a/b/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Asychronously getting Advertising Info and storing it to preferences"

    invoke-interface {v1, v2, v3}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/a/a/a/b/c;->b:Le/a/a/a/a/b/d;

    invoke-static {v1, v0}, Le/a/a/a/a/b/d;->a(Le/a/a/a/a/b/d;Le/a/a/a/a/b/b;)V

    :cond_0
    return-void
.end method
