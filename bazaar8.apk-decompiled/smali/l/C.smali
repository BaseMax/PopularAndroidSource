.class public final Ll/C;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/C$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Lj/D;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lj/C;

.field public final f:Lj/F;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Ll/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ll/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/C$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ll/C$a;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ll/C;->a:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, Ll/C$a;->c:Ll/F;

    iget-object v0, v0, Ll/F;->c:Lj/D;

    iput-object v0, p0, Ll/C;->b:Lj/D;

    .line 4
    iget-object v0, p1, Ll/C$a;->p:Ljava/lang/String;

    iput-object v0, p0, Ll/C;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Ll/C$a;->t:Ljava/lang/String;

    iput-object v0, p0, Ll/C;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Ll/C$a;->u:Lj/C;

    iput-object v0, p0, Ll/C;->e:Lj/C;

    .line 7
    iget-object v0, p1, Ll/C$a;->v:Lj/F;

    iput-object v0, p0, Ll/C;->f:Lj/F;

    .line 8
    iget-boolean v0, p1, Ll/C$a;->q:Z

    iput-boolean v0, p0, Ll/C;->g:Z

    .line 9
    iget-boolean v0, p1, Ll/C$a;->r:Z

    iput-boolean v0, p0, Ll/C;->h:Z

    .line 10
    iget-boolean v0, p1, Ll/C$a;->s:Z

    iput-boolean v0, p0, Ll/C;->i:Z

    .line 11
    iget-object p1, p1, Ll/C$a;->x:[Ll/z;

    iput-object p1, p0, Ll/C;->j:[Ll/z;

    return-void
.end method

.method public static a(Ll/F;Ljava/lang/reflect/Method;)Ll/C;
    .locals 1

    .line 1
    new-instance v0, Ll/C$a;

    invoke-direct {v0, p0, p1}, Ll/C$a;-><init>(Ll/F;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Ll/C$a;->a()Ll/C;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Lj/L;
    .locals 12

    .line 2
    iget-object v0, p0, Ll/C;->j:[Ll/z;

    .line 3
    array-length v1, p1

    .line 4
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 5
    new-instance v2, Ll/B;

    iget-object v4, p0, Ll/C;->c:Ljava/lang/String;

    iget-object v5, p0, Ll/C;->b:Lj/D;

    iget-object v6, p0, Ll/C;->d:Ljava/lang/String;

    iget-object v7, p0, Ll/C;->e:Lj/C;

    iget-object v8, p0, Ll/C;->f:Lj/F;

    iget-boolean v9, p0, Ll/C;->g:Z

    iget-boolean v10, p0, Ll/C;->h:Z

    iget-boolean v11, p0, Ll/C;->i:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Ll/B;-><init>(Ljava/lang/String;Lj/D;Ljava/lang/String;Lj/C;Lj/F;ZZZ)V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 7
    aget-object v5, p1, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    aget-object v5, v0, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v2, v6}, Ll/z;->a(Ll/B;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Ll/B;->a()Lj/L$a;

    move-result-object p1

    const-class v0, Ll/s;

    new-instance v1, Ll/s;

    iget-object v2, p0, Ll/C;->a:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2, v3}, Ll/s;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 10
    invoke-virtual {p1, v0, v1}, Lj/L$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lj/L$a;

    .line 11
    invoke-virtual {p1}, Lj/L$a;->a()Lj/L;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t match expected count ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
