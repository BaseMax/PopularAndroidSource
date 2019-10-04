.class public final Lb/i/h/b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lb/i/h/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lb/i/h/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/i/h/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/h/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/i/h/b;->b:Lb/i/h/a;

    iput p3, p0, Lb/i/h/b;->c:I

    iput-object p4, p0, Lb/i/h/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lb/i/h/f$c;
    .locals 4

    .line 2
    iget-object v0, p0, Lb/i/h/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/i/h/b;->b:Lb/i/h/a;

    iget v2, p0, Lb/i/h/b;->c:I

    invoke-static {v0, v1, v2}, Lb/i/h/f;->a(Landroid/content/Context;Lb/i/h/a;I)Lb/i/h/f$c;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lb/i/h/f$c;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lb/i/h/f;->a:Lb/f/g;

    iget-object v3, p0, Lb/i/h/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lb/f/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/i/h/b;->call()Lb/i/h/f$c;

    move-result-object v0

    return-object v0
.end method
