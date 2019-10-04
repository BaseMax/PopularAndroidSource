.class public final Lc/c/a/e/d/i/q;
.super Ljava/lang/Object;
.source "FileDownloadHelper.kt"


# instance fields
.field public final a:Lc/c/a/e/c;

.field public final b:Lc/c/a/e/d/h/e/a/a/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/c;Lc/c/a/e/d/h/e/a/a/n;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    iput-object p2, p0, Lc/c/a/e/d/i/q;->b:Lc/c/a/e/d/h/e/a/a/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 1

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;
    .locals 2

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/e/d/i/p;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/c;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p2, p0, Lc/c/a/e/d/i/q;->b:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/c;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p2, p0, Lc/c/a/e/d/i/q;->b:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p2, p0, Lc/c/a/e/d/i/q;->b:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 7
    :goto_0
    invoke-static {p1}, Lc/c/a/c/b/d;->a(Ljava/io/File;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/c;->b(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 1

    const-string v0, "entryId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/c;->j(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 3

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v2}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lc/c/a/e/d/i/q;->a:Lc/c/a/e/c;

    invoke-virtual {v1, v0, p1, p2}, Lc/c/a/e/c;->a(Ljava/io/File;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v2

    :goto_0
    return v2
.end method
