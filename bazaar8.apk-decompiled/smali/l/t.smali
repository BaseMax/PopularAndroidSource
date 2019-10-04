.class public Ll/t;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lj/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/v;->a(Ll/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/d;

.field public final synthetic b:Ll/v;


# direct methods
.method public constructor <init>(Ll/v;Ll/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/t;->b:Ll/v;

    iput-object p2, p0, Ll/t;->a:Ll/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/i;Lj/P;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Ll/t;->b:Ll/v;

    invoke-virtual {p1, p2}, Ll/v;->a(Lj/P;)Ll/D;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object p2, p0, Ll/t;->a:Ll/d;

    iget-object v0, p0, Ll/t;->b:Ll/v;

    invoke-interface {p2, v0, p1}, Ll/d;->a(Ll/b;Ll/D;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Ll/H;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p1}, Ll/t;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lj/i;Ljava/io/IOException;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p2}, Ll/t;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Ll/t;->a:Ll/d;

    iget-object v1, p0, Ll/t;->b:Ll/v;

    invoke-interface {v0, v1, p1}, Ll/d;->a(Ll/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
