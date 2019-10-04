.class public final Lc/c/a/n/x/a/c$c;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/x/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/x/a/c$c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/x/a/c$c$a;


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/x/a/c$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/x/a/c$c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/x/a/c$c;->a:Lc/c/a/n/x/a/c$c$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/n/x/a/c$c;->b:I

    iput p2, p0, Lc/c/a/n/x/a/c$c;->c:I

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/x/a/c$c;
    .locals 1

    sget-object v0, Lc/c/a/n/x/a/c$c;->a:Lc/c/a/n/x/a/c$c$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/x/a/c$c$a;->a(Landroid/os/Bundle;)Lc/c/a/n/x/a/c$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/x/a/c$c;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/x/a/c$c;->c:I

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lc/c/a/n/x/a/c$c;->b:I

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Lc/c/a/n/x/a/c$c;->c:I

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/n/x/a/c$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/n/x/a/c$c;

    iget v1, p0, Lc/c/a/n/x/a/c$c;->b:I

    iget v3, p1, Lc/c/a/n/x/a/c$c;->b:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lc/c/a/n/x/a/c$c;->c:I

    iget p1, p1, Lc/c/a/n/x/a/c$c;->c:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lc/c/a/n/x/a/c$c;->b:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/n/x/a/c$c;->c:I

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeDialogNavArgs(hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/x/a/c$c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/x/a/c$c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
