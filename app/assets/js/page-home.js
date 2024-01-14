document.getElementById('capture-btn').addEventListener('click', async () => {
    try {
        // Mostra a janela de escolha para compartilhar a tela
        const stream = await navigator.mediaDevices.getDisplayMedia({ video: true });

        // O vídeo começa sendo gravado após 3 segundos
        setTimeout(() => {
            let mediaRecorder = new MediaRecorder(stream);
            let chunks = [];
            mediaRecorder.start();

            mediaRecorder.ondataavailable = (e) => {
                chunks.push(e.data);
            };

            document.addEventListener('keydown', (e) => {
                if (e.key === 'Escape') {
                    // Para a gravação
                    mediaRecorder.stop();
                }
            });

            mediaRecorder.onstop = () => {
                const blob = new Blob(chunks, { 'type' : 'video/mp4' });
                chunks = [];

                if (confirm('Deseja enviar a captura?')) {
                    // Prepara o formulário para enviar os dados e o vídeo
                    const formData = new FormData(document.getElementById('capture-form'));
                    formData.append('video-file', blob);

                    // Faz o upload para o backend PHP
                    fetch('upload.php', {
                        method: 'POST',
                        body: formData
                    })
                    .then(response => response.json())
                    .then(data => {
                        alert('Upload realizado com sucesso!');
                        console.log(data);
                        // Limpa o formulário ou redireciona o usuário
                    })
                    .catch(error => {
                        console.error(error);
                        alert('Ocorreu um erro ao fazer o upload.');
                    });
                }

                // Encerra a stream
                stream.getTracks().forEach(track => track.stop());
            };
        }, 3000);
    } catch(error) {
        console.error(error);
        alert('Erro ao capturar a tela.');
    }
});