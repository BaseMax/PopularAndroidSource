.class public final Lc/e/a/a/k/c/a;
.super Lc/e/a/a/k/c;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/k/c/a$a;
    }
.end annotation


# instance fields
.field public final o:Lc/e/a/a/o/v;

.field public final p:Lc/e/a/a/o/v;

.field public final q:Lc/e/a/a/k/c/a$a;

.field public r:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/k/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/c/a;->o:Lc/e/a/a/o/v;

    .line 3
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/c/a;->p:Lc/e/a/a/o/v;

    .line 4
    new-instance v0, Lc/e/a/a/k/c/a$a;

    invoke-direct {v0}, Lc/e/a/a/k/c/a$a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/c/a;->q:Lc/e/a/a/k/c/a$a;

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;Lc/e/a/a/k/c/a$a;)Lc/e/a/a/k/b;
    .locals 5

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lc/e/a/a/o/v;->u()I

    move-result v1

    .line 16
    invoke-virtual {p0}, Lc/e/a/a/o/v;->A()I

    move-result v2

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 19
    :pswitch_0
    invoke-static {p1, p0, v2}, Lc/e/a/a/k/c/a$a;->c(Lc/e/a/a/k/c/a$a;Lc/e/a/a/o/v;I)V

    goto :goto_0

    .line 20
    :pswitch_1
    invoke-static {p1, p0, v2}, Lc/e/a/a/k/c/a$a;->b(Lc/e/a/a/k/c/a$a;Lc/e/a/a/o/v;I)V

    goto :goto_0

    .line 21
    :pswitch_2
    invoke-static {p1, p0, v2}, Lc/e/a/a/k/c/a$a;->a(Lc/e/a/a/k/c/a$a;Lc/e/a/a/o/v;I)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/k/c/a$a;->a()Lc/e/a/a/k/b;

    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lc/e/a/a/k/c/a$a;->b()V

    .line 24
    :goto_0
    invoke-virtual {p0, v3}, Lc/e/a/a/o/v;->e(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([BIZ)Lc/e/a/a/k/e;
    .locals 0

    .line 1
    iget-object p3, p0, Lc/e/a/a/k/c/a;->o:Lc/e/a/a/o/v;

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/o/v;->a([BI)V

    .line 2
    iget-object p1, p0, Lc/e/a/a/k/c/a;->o:Lc/e/a/a/o/v;

    invoke-virtual {p0, p1}, Lc/e/a/a/k/c/a;->a(Lc/e/a/a/o/v;)V

    .line 3
    iget-object p1, p0, Lc/e/a/a/k/c/a;->q:Lc/e/a/a/k/c/a$a;

    invoke-virtual {p1}, Lc/e/a/a/k/c/a$a;->b()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    :goto_0
    iget-object p2, p0, Lc/e/a/a/k/c/a;->o:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->a()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 6
    iget-object p2, p0, Lc/e/a/a/k/c/a;->o:Lc/e/a/a/o/v;

    iget-object p3, p0, Lc/e/a/a/k/c/a;->q:Lc/e/a/a/k/c/a$a;

    invoke-static {p2, p3}, Lc/e/a/a/k/c/a;->a(Lc/e/a/a/o/v;Lc/e/a/a/k/c/a$a;)Lc/e/a/a/k/b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lc/e/a/a/k/c/b;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/e/a/a/k/c/b;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method public final a(Lc/e/a/a/o/v;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lc/e/a/a/o/v;->f()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lc/e/a/a/k/c/a;->r:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/c/a;->r:Ljava/util/zip/Inflater;

    .line 12
    :cond_0
    iget-object v0, p0, Lc/e/a/a/k/c/a;->p:Lc/e/a/a/o/v;

    iget-object v1, p0, Lc/e/a/a/k/c/a;->r:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/o/v;Lc/e/a/a/o/v;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lc/e/a/a/k/c/a;->p:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/a/o/v;->a([BI)V

    :cond_1
    return-void
.end method
