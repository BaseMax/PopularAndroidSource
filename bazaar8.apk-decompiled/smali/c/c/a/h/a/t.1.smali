.class public Lc/c/a/h/a/t;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lg/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/h/a/Ca;->a(Lc/c/a/h/a/Ca$s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/a<",
        "Lc/c/a/h/b/aa$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/h/a/t;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lc/c/a/h/b/aa$a;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/h/a/Ca$B;

    iget-object v1, p0, Lc/c/a/h/a/t;->a:Lc/c/a/h/a/Ca;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/c/a/h/a/Ca$B;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/l;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/a/t;->get()Lc/c/a/h/b/aa$a;

    move-result-object v0

    return-object v0
.end method
