.class public Ll/u;
.super Lk/k;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/v$a;->w()Lk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ll/v$a;


# direct methods
.method public constructor <init>(Ll/v$a;Lk/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/u;->b:Ll/v$a;

    invoke-direct {p0, p2}, Lk/k;-><init>(Lk/z;)V

    return-void
.end method


# virtual methods
.method public b(Lk/g;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lk/k;->b(Lk/g;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Ll/u;->b:Ll/v$a;

    iput-object p1, p2, Ll/v$a;->c:Ljava/io/IOException;

    .line 3
    throw p1
.end method
