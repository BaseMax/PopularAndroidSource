.class public final Lj/a/a/h$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[Lk/z;

.field public final d:[J

.field public final synthetic e:Lj/a/a/h;


# direct methods
.method public constructor <init>(Lj/a/a/h;Ljava/lang/String;J[Lk/z;[J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/h$c;->e:Lj/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lj/a/a/h$c;->a:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lj/a/a/h$c;->b:J

    .line 4
    iput-object p5, p0, Lj/a/a/h$c;->c:[Lk/z;

    .line 5
    iput-object p6, p0, Lj/a/a/h$c;->d:[J

    return-void
.end method


# virtual methods
.method public b(I)Lk/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/a/h$c;->c:[Lk/z;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a/a/h$c;->c:[Lk/z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lj/a/e;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()Lj/a/a/h$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a/a/h$c;->e:Lj/a/a/h;

    iget-object v1, p0, Lj/a/a/h$c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lj/a/a/h$c;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lj/a/a/h;->a(Ljava/lang/String;J)Lj/a/a/h$a;

    move-result-object v0

    return-object v0
.end method
