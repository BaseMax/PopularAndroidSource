.class public final Lc/c/a/a/b/a/a/c/a/a;
.super Ljava/lang/Object;
.source "ActionLogRequestDto.kt"


# instance fields
.field public final androidId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "androidId"
    .end annotation
.end field

.field public final cid:F
    .annotation runtime Lc/e/d/a/c;
        value = "cid"
    .end annotation
.end field

.field public final deviceId:I
    .annotation runtime Lc/e/d/a/c;
        value = "deviceId"
    .end annotation
.end field

.field public final deviceModel:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "deviceModel"
    .end annotation
.end field

.field public final isTablet:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isTable"
    .end annotation
.end field

.field public final lac:F
    .annotation runtime Lc/e/d/a/c;
        value = "lac"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;FFILjava/lang/String;)V
    .locals 1

    const-string v0, "deviceModel"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidId"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/c/a/a/b/a/a/c/a/a;->isTablet:Z

    iput-object p2, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceModel:Ljava/lang/String;

    iput p3, p0, Lc/c/a/a/b/a/a/c/a/a;->cid:F

    iput p4, p0, Lc/c/a/a/b/a/a/c/a/a;->lac:F

    iput p5, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceId:I

    iput-object p6, p0, Lc/c/a/a/b/a/a/c/a/a;->androidId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/a/b/a/a/c/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/a/b/a/a/c/a/a;

    iget-boolean v1, p0, Lc/c/a/a/b/a/a/c/a/a;->isTablet:Z

    iget-boolean v3, p1, Lc/c/a/a/b/a/a/c/a/a;->isTablet:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceModel:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/a/b/a/a/c/a/a;->deviceModel:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->cid:F

    iget v3, p1, Lc/c/a/a/b/a/a/c/a/a;->cid:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->lac:F

    iget v3, p1, Lc/c/a/a/b/a/a/c/a/a;->lac:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceId:I

    iget v3, p1, Lc/c/a/a/b/a/a/c/a/a;->deviceId:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->androidId:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/a/b/a/a/c/a/a;->androidId:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lc/c/a/a/b/a/a/c/a/a;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceModel:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->cid:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->lac:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device(isTablet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/a/b/a/a/c/a/a;->isTablet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->cid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->lac:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/a/b/a/a/c/a/a;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/a;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
