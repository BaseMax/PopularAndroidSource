.class public final Lh/e/c;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/e/c$c;,
        Lh/e/c$a;,
        Lh/e/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/j/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lkotlin/io/FileWalkDirection;

.field public final c:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "Ljava/io/File;",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V
    .locals 10

    const-string v0, "start"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v9}, Lh/e/c;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lh/f/a/b;Lh/f/a/b;Lh/f/a/c;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lh/f/a/b;Lh/f/a/b;Lh/f/a/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/FileWalkDirection;",
            "Lh/f/a/b<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Ljava/io/File;",
            "Lh/h;",
            ">;",
            "Lh/f/a/c<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lh/h;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/e/c;->a:Ljava/io/File;

    iput-object p2, p0, Lh/e/c;->b:Lkotlin/io/FileWalkDirection;

    iput-object p3, p0, Lh/e/c;->c:Lh/f/a/b;

    iput-object p4, p0, Lh/e/c;->d:Lh/f/a/b;

    iput-object p5, p0, Lh/e/c;->e:Lh/f/a/c;

    iput p6, p0, Lh/e/c;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lh/f/a/b;Lh/f/a/b;Lh/f/a/c;IILh/f/b/f;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 2
    sget-object p2, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lh/e/c;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lh/f/a/b;Lh/f/a/b;Lh/f/a/c;I)V

    return-void
.end method

.method public static final synthetic a(Lh/e/c;)Lkotlin/io/FileWalkDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/e/c;->b:Lkotlin/io/FileWalkDirection;

    return-object p0
.end method

.method public static final synthetic b(Lh/e/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lh/e/c;->f:I

    return p0
.end method

.method public static final synthetic c(Lh/e/c;)Lh/f/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/e/c;->c:Lh/f/a/b;

    return-object p0
.end method

.method public static final synthetic d(Lh/e/c;)Lh/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/e/c;->e:Lh/f/a/c;

    return-object p0
.end method

.method public static final synthetic e(Lh/e/c;)Lh/f/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/e/c;->d:Lh/f/a/b;

    return-object p0
.end method

.method public static final synthetic f(Lh/e/c;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/e/c;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/e/c$b;

    invoke-direct {v0, p0}, Lh/e/c$b;-><init>(Lh/e/c;)V

    return-object v0
.end method
