.class public final Lc/c/a/h/a/Ca$qa;
.super Lc/c/a/h/b/e$a;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "qa"
.end annotation


# instance fields
.field public a:Lcom/farsitel/bazaar/ui/home/MainActivity;

.field public final synthetic b:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/h/a/Ca$qa;->b:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Lc/c/a/h/b/e$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/l;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/c/a/h/a/Ca$qa;-><init>(Lc/c/a/h/a/Ca;)V

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/h/b/e;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/h/a/Ca$qa;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lc/c/a/h/a/Ca$ra;

    iget-object v1, p0, Lc/c/a/h/a/Ca$qa;->b:Lc/c/a/h/a/Ca;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lc/c/a/h/a/Ca$ra;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$qa;Lc/c/a/h/a/l;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ld/a/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/a/Ca$qa;->a()Lc/c/a/h/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/ui/home/MainActivity;)V
    .locals 0

    .line 5
    invoke-static {p1}, Ld/b/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/ui/home/MainActivity;

    iput-object p1, p0, Lc/c/a/h/a/Ca$qa;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$qa;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;)V

    return-void
.end method
