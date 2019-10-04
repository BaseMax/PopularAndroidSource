.class public final Landroidx/navigation/NavArgument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavArgument$Builder;
    }
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;

.field private final mDefaultValuePresent:Z

.field private final mIsNullable:Z

.field private final mType:Landroidx/navigation/NavType;


# direct methods
.method constructor <init>(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavType<",
            "*>;Z",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroidx/navigation/NavType;->isNullableAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not allow nullable values"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Argument with type "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has null value but is not nullable."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_3
    :goto_1
    iput-object p1, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    .line 51
    iput-boolean p2, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    .line 52
    iput-object p3, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    .line 53
    iput-boolean p4, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    check-cast p1, Landroidx/navigation/NavArgument;

    .line 119
    iget-boolean v2, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    iget-boolean v3, p1, Landroidx/navigation/NavArgument;->mIsNullable:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 120
    :cond_2
    iget-boolean v2, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    iget-boolean v3, p1, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 121
    :cond_3
    iget-object v2, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    iget-object v3, p1, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 122
    :cond_4
    iget-object v2, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 128
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-boolean v1, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-boolean v1, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v1, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefaultValuePresent()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    return v0
.end method

.method public final isNullable()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    return v0
.end method

.method final putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    iget-object v1, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v0, p2, p1, v1}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final verify(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 101
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p2, p1}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method
