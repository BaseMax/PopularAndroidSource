.class final Lcab/snapp/passenger/units/box_options/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/box_options/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/box_options/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/box_options/c;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/c$3;->a:Lcab/snapp/passenger/units/box_options/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 70
    iget-object p2, p0, Lcab/snapp/passenger/units/box_options/c$3;->a:Lcab/snapp/passenger/units/box_options/c;

    invoke-static {p2}, Lcab/snapp/passenger/units/box_options/c;->e(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcab/snapp/passenger/units/box_options/c$3;->a:Lcab/snapp/passenger/units/box_options/c;

    invoke-static {p2}, Lcab/snapp/passenger/units/box_options/c;->f(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/box_options/a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/box_options/a;->updateDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
