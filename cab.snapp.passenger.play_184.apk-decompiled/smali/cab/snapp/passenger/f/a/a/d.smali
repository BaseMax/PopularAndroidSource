.class public final Lcab/snapp/passenger/f/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/b;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcab/snapp/passenger/data/models/SnappUssd;

.field private c:Lcab/snapp/passenger/f/a/a$a;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcab/snapp/passenger/data/models/SnappUssd;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/d;->a:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcab/snapp/passenger/f/a/a/d;->b:Lcab/snapp/passenger/data/models/SnappUssd;

    return-void
.end method


# virtual methods
.method public final openIPG(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final performPayCall(Ljava/lang/String;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/d;->c:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcab/snapp/passenger/f/a/a$a;->onPaymentStart()V

    .line 48
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/f/a/a/d;->d:I

    .line 49
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/d;->b:Lcab/snapp/passenger/data/models/SnappUssd;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/SnappUssd;->getPattern()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[-AMT-]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcab/snapp/passenger/f/a/a/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1076
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/d;->c:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_1

    .line 1078
    iget v1, p0, Lcab/snapp/passenger/f/a/a/d;->d:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcab/snapp/passenger/f/a/a$a;->onPaymentSucceed(J)V

    :cond_1
    const-string v0, "#"

    .line 1080
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1082
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/d;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcab/snapp/c/h;->callNumber(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setInteractionInterface(Lcab/snapp/passenger/f/a/a$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/d;->c:Lcab/snapp/passenger/f/a/a$a;

    return-void
.end method
