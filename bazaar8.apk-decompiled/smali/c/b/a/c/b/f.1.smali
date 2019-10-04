.class public Lc/b/a/c/b/f;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lc/b/a/c/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/b/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/f;


# direct methods
.method public constructor <init>(Lc/b/a/c/a;Ljava/lang/Object;Lc/b/a/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/a<",
            "TDataType;>;TDataType;",
            "Lc/b/a/c/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/b/f;->a:Lc/b/a/c/a;

    .line 3
    iput-object p2, p0, Lc/b/a/c/b/f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lc/b/a/c/b/f;->c:Lc/b/a/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/f;->a:Lc/b/a/c/a;

    iget-object v1, p0, Lc/b/a/c/b/f;->b:Ljava/lang/Object;

    iget-object v2, p0, Lc/b/a/c/b/f;->c:Lc/b/a/c/f;

    invoke-interface {v0, v1, p1, v2}, Lc/b/a/c/a;->a(Ljava/lang/Object;Ljava/io/File;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
