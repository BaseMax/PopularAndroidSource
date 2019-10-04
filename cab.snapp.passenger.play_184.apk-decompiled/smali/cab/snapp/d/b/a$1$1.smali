.class final Lcab/snapp/d/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/b/a$1;->onSuccess(Lcab/snapp/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcab/snapp/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/b/a$1;


# direct methods
.method constructor <init>(Lcab/snapp/d/b/a$1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/d/b/a$1$1;->a:Lcab/snapp/d/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcab/snapp/a/a;Lcab/snapp/a/a;)I
    .locals 3

    .line 75
    iget-object v0, p0, Lcab/snapp/d/b/a$1$1;->a:Lcab/snapp/d/b/a$1;

    iget-object v0, v0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    .line 1034
    iget-object v0, v0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    .line 75
    invoke-virtual {p1}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcab/snapp/d/b/a$1$1;->a:Lcab/snapp/d/b/a$1;

    iget-object v0, v0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    .line 2034
    iget-object v0, v0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p1}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 79
    :goto_0
    iget-object v0, p0, Lcab/snapp/d/b/a$1$1;->a:Lcab/snapp/d/b/a$1;

    iget-object v0, v0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    .line 3034
    iget-object v0, v0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    .line 79
    invoke-virtual {p2}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcab/snapp/d/b/a$1$1;->a:Lcab/snapp/d/b/a$1;

    iget-object v0, v0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    .line 4034
    iget-object v0, v0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p2}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    .line 84
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_2
    if-ge p1, p2, :cond_3

    return v1

    :cond_3
    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcab/snapp/a/a;

    check-cast p2, Lcab/snapp/a/a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/d/b/a$1$1;->compare(Lcab/snapp/a/a;Lcab/snapp/a/a;)I

    move-result p1

    return p1
.end method
