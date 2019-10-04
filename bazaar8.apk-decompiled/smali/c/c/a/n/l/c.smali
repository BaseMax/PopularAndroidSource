.class public final Lc/c/a/n/l/c;
.super Ljava/lang/Object;
.source "FehrestFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/l/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/l/c$a;


# instance fields
.field public final b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/l/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/l/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/l/c;->a:Lc/c/a/n/l/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fehrestParams"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/l/c;->b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    iput-object p2, p0, Lc/c/a/n/l/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/l/c;
    .locals 1

    sget-object v0, Lc/c/a/n/l/c;->a:Lc/c/a/n/l/c$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/l/c$a;->a(Landroid/os/Bundle;)Lc/c/a/n/l/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/n/l/c;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/n/l/c;

    iget-object v0, p0, Lc/c/a/n/l/c;->b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    iget-object v1, p1, Lc/c/a/n/l/c;->b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/l/c;->c:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/n/l/c;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/l/c;->b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/l/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FehrestFragmentArgs(fehrestParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/l/c;->b:Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/l/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
