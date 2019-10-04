.class public final Ll/F$a;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ll/A;

.field public b:Lj/i$a;

.field public c:Lj/D;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/Executor;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-static {}, Ll/A;->e()Ll/A;

    move-result-object v0

    invoke-direct {p0, v0}, Ll/F$a;-><init>(Ll/A;)V

    return-void
.end method

.method public constructor <init>(Ll/A;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/F$a;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/F$a;->e:Ljava/util/List;

    .line 4
    iput-object p1, p0, Ll/F$a;->a:Ll/A;

    return-void
.end method


# virtual methods
.method public a(Lj/D;)Ll/F$a;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 5
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lj/D;->j()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iput-object p1, p0, Ll/F$a;->c:Lj/D;

    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lj/I;)Ll/F$a;
    .locals 1

    const-string v0, "client == null"

    .line 1
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lj/i$a;

    invoke-virtual {p0, p1}, Ll/F$a;->a(Lj/i$a;)Ll/F$a;

    return-object p0
.end method

.method public a(Lj/i$a;)Ll/F$a;
    .locals 1

    const-string v0, "factory == null"

    .line 2
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lj/i$a;

    iput-object p1, p0, Ll/F$a;->b:Lj/i$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ll/F$a;
    .locals 1

    const-string v0, "baseUrl == null"

    .line 3
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lj/D;->b(Ljava/lang/String;)Lj/D;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll/F$a;->a(Lj/D;)Ll/F$a;

    return-object p0
.end method

.method public a(Ll/j$a;)Ll/F$a;
    .locals 2

    .line 10
    iget-object v0, p0, Ll/F$a;->d:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Ll/F;
    .locals 9

    .line 11
    iget-object v0, p0, Ll/F$a;->c:Lj/D;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Ll/F$a;->b:Lj/i$a;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lj/I;

    invoke-direct {v0}, Lj/I;-><init>()V

    :cond_0
    move-object v2, v0

    .line 14
    iget-object v0, p0, Ll/F$a;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Ll/F$a;->a:Ll/A;

    invoke-virtual {v0}, Ll/A;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll/F$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v1, p0, Ll/F$a;->a:Ll/A;

    invoke-virtual {v1, v6}, Ll/A;->a(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ll/F$a;->d:Ljava/util/List;

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ll/F$a;->a:Ll/A;

    invoke-virtual {v4}, Ll/A;->c()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    new-instance v3, Ll/a;

    invoke-direct {v3}, Ll/a;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v3, p0, Ll/F$a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v3, p0, Ll/F$a;->a:Ll/A;

    invoke-virtual {v3}, Ll/A;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    new-instance v8, Ll/F;

    iget-object v3, p0, Ll/F$a;->c:Lj/D;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-boolean v7, p0, Ll/F$a;->g:Z

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ll/F;-><init>(Lj/i$a;Lj/D;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v8

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
