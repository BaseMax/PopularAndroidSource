.class final Lcab/snapp/passenger/units/profile/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/profile/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/profile/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/profile/c;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c$6;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c$6;->a:Lcab/snapp/passenger/units/profile/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c$6;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
