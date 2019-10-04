.class public final Lc/b/a/a/b$d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[J

.field public final d:[Ljava/io/File;

.field public final synthetic e:Lc/b/a/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/a/b;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/b/a/a/b$d;->e:Lc/b/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc/b/a/a/b$d;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lc/b/a/a/b$d;->b:J

    .line 5
    iput-object p5, p0, Lc/b/a/a/b$d;->d:[Ljava/io/File;

    .line 6
    iput-object p6, p0, Lc/b/a/a/b$d;->c:[J

    return-void
.end method

.method public synthetic constructor <init>(Lc/b/a/a/b;Ljava/lang/String;J[Ljava/io/File;[JLc/b/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lc/b/a/a/b$d;-><init>(Lc/b/a/a/b;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/b$d;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
