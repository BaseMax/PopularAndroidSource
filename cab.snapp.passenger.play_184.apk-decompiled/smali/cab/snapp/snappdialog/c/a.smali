.class public final Lcab/snapp/snappdialog/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcab/snapp/snappdialog/c/a;->c:I

    .line 41
    iput p2, p0, Lcab/snapp/snappdialog/c/a;->b:I

    .line 42
    iput p3, p0, Lcab/snapp/snappdialog/c/a;->a:I

    return-void
.end method


# virtual methods
.method public final getDay()I
    .locals 1

    .line 52
    iget v0, p0, Lcab/snapp/snappdialog/c/a;->a:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 72
    iget v0, p0, Lcab/snapp/snappdialog/c/a;->b:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 92
    iget v0, p0, Lcab/snapp/snappdialog/c/a;->c:I

    return v0
.end method

.method public final setDay(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcab/snapp/snappdialog/c/a;->a:I

    return-void
.end method

.method public final setMonth(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcab/snapp/snappdialog/c/a;->b:I

    return-void
.end method

.method public final setYear(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcab/snapp/snappdialog/c/a;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateSelected{day="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/snappdialog/c/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/snappdialog/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/snappdialog/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
