.class public final Ll/a/a/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Ll/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/j<",
        "TT;",
        "Lj/O;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj/F;

.field public static final b:Ljava/nio/charset/Charset;


# instance fields
.field public final c:Lc/e/d/j;

.field public final d:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Ll/a/a/b;->a:Lj/F;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ll/a/a/b;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/a/a/b;->c:Lc/e/d/j;

    .line 3
    iput-object p2, p0, Ll/a/a/b;->d:Lc/e/d/x;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lj/O;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lj/O;"
        }
    .end annotation

    .line 2
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    .line 3
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lk/g;->r()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ll/a/a/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 4
    iget-object v2, p0, Ll/a/a/b;->c:Lc/e/d/j;

    invoke-virtual {v2, v1}, Lc/e/d/j;->a(Ljava/io/Writer;)Lc/e/d/d/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ll/a/a/b;->d:Lc/e/d/x;

    invoke-virtual {v2, v1, p1}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1}, Lc/e/d/d/c;->close()V

    .line 7
    sget-object p1, Ll/a/a/b;->a:Lj/F;

    invoke-virtual {v0}, Lk/g;->s()Lokio/ByteString;

    move-result-object v0

    invoke-static {p1, v0}, Lj/O;->a(Lj/F;Lokio/ByteString;)Lj/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/a/a/b;->a(Ljava/lang/Object;)Lj/O;

    move-result-object p1

    return-object p1
.end method
