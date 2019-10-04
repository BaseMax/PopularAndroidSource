.class public final Lb/i/h/d;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lb/i/h/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/h/f;->a(Landroid/content/Context;Lb/i/h/a;Lb/i/b/a/h$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/h/k$a<",
        "Lb/i/h/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/h/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/i/h/f$c;)V
    .locals 4

    .line 2
    sget-object v0, Lb/i/h/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/i/h/f;->d:Lb/f/i;

    iget-object v2, p0, Lb/i/h/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lb/i/h/f;->d:Lb/f/i;

    iget-object v3, p0, Lb/i/h/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/i/h/k$a;

    invoke-interface {v2, p1}, Lb/i/h/k$a;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/i/h/f$c;

    invoke-virtual {p0, p1}, Lb/i/h/d;->a(Lb/i/h/f$c;)V

    return-void
.end method
